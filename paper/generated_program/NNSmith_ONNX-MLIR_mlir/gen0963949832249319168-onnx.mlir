module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @llvm.memcpy.p0.p0.i64(!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(2 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(4 : index) : i64
    %21 = llvm.mlir.null : !llvm.ptr<i32>
    %22 = llvm.getelementptr %21[%20] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %23 = llvm.ptrtoint %22 : !llvm.ptr<i32> to i64
    %24 = llvm.mlir.constant(16 : index) : i64
    %25 = llvm.add %23, %24  : i64
    %26 = llvm.call @malloc(%25) : (i64) -> !llvm.ptr<i8>
    %27 = llvm.bitcast %26 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %28 = llvm.ptrtoint %27 : !llvm.ptr<i32> to i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.sub %24, %29  : i64
    %31 = llvm.add %28, %30  : i64
    %32 = llvm.urem %31, %24  : i64
    %33 = llvm.sub %31, %32  : i64
    %34 = llvm.inttoptr %33 : i64 to !llvm.ptr<i32>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %36 = llvm.insertvalue %27, %35[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %15, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %16, %40[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %17, %41[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %18, %42[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %16, %43[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %17, %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %18, %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %19, %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%48 : i64)
  ^bb1(%51: i64):  // 2 preds: ^bb0, ^bb5
    %52 = llvm.icmp "slt" %51, %49 : i64
    llvm.cond_br %52, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%53 : i64)
  ^bb3(%56: i64):  // 2 preds: ^bb2, ^bb4
    %57 = llvm.icmp "slt" %56, %54 : i64
    llvm.cond_br %57, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mul %51, %58  : i64
    %60 = llvm.add %59, %56  : i64
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.mul %56, %61  : i64
    %63 = llvm.add %51, %62  : i64
    %64 = llvm.mlir.constant(4 : i64) : i64
    %65 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.ptrtoint %65 : !llvm.ptr<i32> to i64
    %67 = llvm.bitcast %63 : i64 to i64
    %68 = llvm.mul %67, %64  : i64
    %69 = llvm.add %66, %68  : i64
    %70 = llvm.inttoptr %69 : i64 to !llvm.ptr<i32>
    %71 = llvm.bitcast %70 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %72 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.ptrtoint %72 : !llvm.ptr<i32> to i64
    %74 = llvm.bitcast %60 : i64 to i64
    %75 = llvm.mul %74, %64  : i64
    %76 = llvm.add %73, %75  : i64
    %77 = llvm.inttoptr %76 : i64 to !llvm.ptr<i32>
    %78 = llvm.bitcast %77 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %79 = llvm.mul %12, %64  : i64
    %80 = llvm.sext %79 : i64 to i64
    %81 = llvm.mlir.constant(false) : i1
    llvm.call @llvm.memcpy.p0.p0.i64(%71, %78, %80, %81) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %82 = llvm.add %56, %55  : i64
    llvm.br ^bb3(%82 : i64)
  ^bb5:  // pred: ^bb3
    %83 = llvm.add %51, %50  : i64
    llvm.br ^bb1(%83 : i64)
  ^bb6:  // pred: ^bb1
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(4 : index) : i64
    %90 = llvm.mlir.null : !llvm.ptr<i64>
    %91 = llvm.getelementptr %90[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i64> to i64
    %93 = llvm.mlir.constant(16 : index) : i64
    %94 = llvm.add %92, %93  : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.bitcast %95 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %97 = llvm.ptrtoint %96 : !llvm.ptr<i64> to i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.sub %93, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.urem %100, %93  : i64
    %102 = llvm.sub %100, %101  : i64
    %103 = llvm.inttoptr %102 : i64 to !llvm.ptr<i64>
    %104 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %105 = llvm.insertvalue %96, %104[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %103, %105[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.insertvalue %107, %106[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %84, %108[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %85, %109[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %86, %110[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %87, %111[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %85, %112[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %86, %113[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %87, %114[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %88, %115[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%117 : i64)
  ^bb7(%120: i64):  // 2 preds: ^bb6, ^bb17
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb8, ^bb18
  ^bb8:  // pred: ^bb7
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%122 : i64)
  ^bb9(%125: i64):  // 2 preds: ^bb8, ^bb16
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb10, ^bb17
  ^bb10:  // pred: ^bb9
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%127 : i64)
  ^bb11(%130: i64):  // 2 preds: ^bb10, ^bb15
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb12, ^bb16
  ^bb12:  // pred: ^bb11
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%132 : i64)
  ^bb13(%135: i64):  // 2 preds: ^bb12, ^bb14
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %137 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %120, %138  : i64
    %140 = llvm.add %139, %125  : i64
    %141 = llvm.add %140, %130  : i64
    %142 = llvm.add %141, %135  : i64
    %143 = llvm.getelementptr %137[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.sext %144 : i32 to i64
    %146 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mul %120, %147  : i64
    %149 = llvm.add %148, %125  : i64
    %150 = llvm.add %149, %130  : i64
    %151 = llvm.add %150, %135  : i64
    %152 = llvm.getelementptr %146[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %152 : !llvm.ptr<i64>
    %153 = llvm.add %135, %134  : i64
    llvm.br ^bb13(%153 : i64)
  ^bb15:  // pred: ^bb13
    %154 = llvm.add %130, %129  : i64
    llvm.br ^bb11(%154 : i64)
  ^bb16:  // pred: ^bb11
    %155 = llvm.add %125, %124  : i64
    llvm.br ^bb9(%155 : i64)
  ^bb17:  // pred: ^bb9
    %156 = llvm.add %120, %119  : i64
    llvm.br ^bb7(%156 : i64)
  ^bb18:  // pred: ^bb7
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.null : !llvm.ptr<i64>
    %162 = llvm.getelementptr %161[%157] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %163 = llvm.ptrtoint %162 : !llvm.ptr<i64> to i64
    %164 = llvm.mlir.constant(16 : index) : i64
    %165 = llvm.add %163, %164  : i64
    %166 = llvm.call @malloc(%165) : (i64) -> !llvm.ptr<i8>
    %167 = llvm.bitcast %166 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %168 = llvm.ptrtoint %167 : !llvm.ptr<i64> to i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.sub %164, %169  : i64
    %171 = llvm.add %168, %170  : i64
    %172 = llvm.urem %171, %164  : i64
    %173 = llvm.sub %171, %172  : i64
    %174 = llvm.inttoptr %173 : i64 to !llvm.ptr<i64>
    %175 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %176 = llvm.insertvalue %167, %175[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %177 = llvm.insertvalue %174, %176[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.insertvalue %178, %177[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %180 = llvm.insertvalue %157, %179[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %181 = llvm.insertvalue %158, %180[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %182 = llvm.insertvalue %159, %181[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %183 = llvm.insertvalue %158, %182[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %184 = llvm.insertvalue %159, %183[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %185 = llvm.insertvalue %160, %184[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%186 : i64)
  ^bb19(%189: i64):  // 2 preds: ^bb18, ^bb26
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%191 : i64)
  ^bb21(%194: i64):  // 2 preds: ^bb20, ^bb25
    %195 = llvm.icmp "slt" %194, %192 : i64
    llvm.cond_br %195, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%196 : i64)
  ^bb23(%199: i64):  // 2 preds: ^bb22, ^bb24
    %200 = llvm.icmp "slt" %199, %197 : i64
    llvm.cond_br %200, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %201 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %202 = llvm.add %189, %194  : i64
    %203 = llvm.add %202, %199  : i64
    %204 = llvm.getelementptr %201[%203] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %204 : !llvm.ptr<i64>
    %205 = llvm.add %199, %198  : i64
    llvm.br ^bb23(%205 : i64)
  ^bb25:  // pred: ^bb23
    %206 = llvm.add %194, %193  : i64
    llvm.br ^bb21(%206 : i64)
  ^bb26:  // pred: ^bb21
    %207 = llvm.add %189, %188  : i64
    llvm.br ^bb19(%207 : i64)
  ^bb27:  // pred: ^bb19
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%208 : i64)
  ^bb28(%211: i64):  // 2 preds: ^bb27, ^bb38
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%213 : i64)
  ^bb30(%216: i64):  // 2 preds: ^bb29, ^bb37
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%218 : i64)
  ^bb32(%221: i64):  // 2 preds: ^bb31, ^bb36
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%223 : i64)
  ^bb34(%226: i64):  // 2 preds: ^bb33, ^bb35
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %228 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mul %211, %229  : i64
    %231 = llvm.add %230, %216  : i64
    %232 = llvm.add %231, %221  : i64
    %233 = llvm.add %232, %226  : i64
    %234 = llvm.getelementptr %228[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %235 = llvm.load %234 : !llvm.ptr<i64>
    %236 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.add %211, %221  : i64
    %238 = llvm.add %237, %226  : i64
    %239 = llvm.getelementptr %236[%238] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %240 = llvm.load %239 : !llvm.ptr<i64>
    %241 = llvm.add %240, %235  : i64
    %242 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %243 = llvm.add %211, %221  : i64
    %244 = llvm.add %243, %226  : i64
    %245 = llvm.getelementptr %242[%244] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %241, %245 : !llvm.ptr<i64>
    %246 = llvm.add %226, %225  : i64
    llvm.br ^bb34(%246 : i64)
  ^bb36:  // pred: ^bb34
    %247 = llvm.add %221, %220  : i64
    llvm.br ^bb32(%247 : i64)
  ^bb37:  // pred: ^bb32
    %248 = llvm.add %216, %215  : i64
    llvm.br ^bb30(%248 : i64)
  ^bb38:  // pred: ^bb30
    %249 = llvm.add %211, %210  : i64
    llvm.br ^bb28(%249 : i64)
  ^bb39:  // pred: ^bb28
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(4 : index) : i64
    %256 = llvm.mlir.null : !llvm.ptr<i1>
    %257 = llvm.getelementptr %256[%255] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %258 = llvm.ptrtoint %257 : !llvm.ptr<i1> to i64
    %259 = llvm.mlir.constant(16 : index) : i64
    %260 = llvm.add %258, %259  : i64
    %261 = llvm.call @malloc(%260) : (i64) -> !llvm.ptr<i8>
    %262 = llvm.bitcast %261 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %263 = llvm.ptrtoint %262 : !llvm.ptr<i1> to i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.sub %259, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.urem %266, %259  : i64
    %268 = llvm.sub %266, %267  : i64
    %269 = llvm.inttoptr %268 : i64 to !llvm.ptr<i1>
    %270 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %271 = llvm.insertvalue %262, %270[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %269, %271[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.insertvalue %273, %272[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %250, %274[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %251, %275[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %252, %276[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %253, %277[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %251, %278[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %252, %279[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %253, %280[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %254, %281[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%283 : i64)
  ^bb40(%286: i64):  // 2 preds: ^bb39, ^bb50
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%288 : i64)
  ^bb42(%291: i64):  // 2 preds: ^bb41, ^bb49
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%293 : i64)
  ^bb44(%296: i64):  // 2 preds: ^bb43, ^bb48
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%298 : i64)
  ^bb46(%301: i64):  // 2 preds: ^bb45, ^bb47
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %303 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mul %286, %304  : i64
    %306 = llvm.add %305, %291  : i64
    %307 = llvm.add %306, %296  : i64
    %308 = llvm.add %307, %301  : i64
    %309 = llvm.getelementptr %303[%308] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %310 = llvm.load %309 : !llvm.ptr<i32>
    %311 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mul %286, %312  : i64
    %314 = llvm.add %313, %291  : i64
    %315 = llvm.add %314, %296  : i64
    %316 = llvm.add %315, %301  : i64
    %317 = llvm.getelementptr %311[%316] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %318 = llvm.load %317 : !llvm.ptr<i32>
    %319 = llvm.icmp "sgt" %310, %318 : i32
    %320 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mul %286, %321  : i64
    %323 = llvm.add %322, %291  : i64
    %324 = llvm.add %323, %296  : i64
    %325 = llvm.add %324, %301  : i64
    %326 = llvm.getelementptr %320[%325] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %319, %326 : !llvm.ptr<i1>
    %327 = llvm.add %301, %300  : i64
    llvm.br ^bb46(%327 : i64)
  ^bb48:  // pred: ^bb46
    %328 = llvm.add %296, %295  : i64
    llvm.br ^bb44(%328 : i64)
  ^bb49:  // pred: ^bb44
    %329 = llvm.add %291, %290  : i64
    llvm.br ^bb42(%329 : i64)
  ^bb50:  // pred: ^bb42
    %330 = llvm.add %286, %285  : i64
    llvm.br ^bb40(%330 : i64)
  ^bb51:  // pred: ^bb40
    %331 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %332 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %332, %331[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %335 = llvm.insertvalue %333, %334[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.insertvalue %336, %335[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.insertvalue %338, %337[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.insertvalue %340, %339[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.insertvalue %342, %341[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.insertvalue %344, %343[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.insertvalue %346, %345[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.insertvalue %348, %347[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %350 = llvm.mlir.constant(2 : index) : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(4 : index) : i64
    %356 = llvm.mlir.constant(8 : index) : i64
    %357 = llvm.mlir.null : !llvm.ptr<i32>
    %358 = llvm.getelementptr %357[%356] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i32> to i64
    %360 = llvm.mlir.constant(16 : index) : i64
    %361 = llvm.add %359, %360  : i64
    %362 = llvm.call @malloc(%361) : (i64) -> !llvm.ptr<i8>
    %363 = llvm.bitcast %362 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %364 = llvm.ptrtoint %363 : !llvm.ptr<i32> to i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.sub %360, %365  : i64
    %367 = llvm.add %364, %366  : i64
    %368 = llvm.urem %367, %360  : i64
    %369 = llvm.sub %367, %368  : i64
    %370 = llvm.inttoptr %369 : i64 to !llvm.ptr<i32>
    %371 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %372 = llvm.insertvalue %363, %371[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %370, %372[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.insertvalue %374, %373[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %350, %375[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %351, %376[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %352, %377[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %353, %378[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %355, %379[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %352, %380[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %353, %381[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %354, %382[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%384 : i64)
  ^bb52(%387: i64):  // 2 preds: ^bb51, ^bb62
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%389 : i64)
  ^bb54(%392: i64):  // 2 preds: ^bb53, ^bb61
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%394 : i64)
  ^bb56(%397: i64):  // 2 preds: ^bb55, ^bb60
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%399 : i64)
  ^bb58(%402: i64):  // 2 preds: ^bb57, ^bb59
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %404 = llvm.extractvalue %282[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mul %387, %405  : i64
    %407 = llvm.add %406, %392  : i64
    %408 = llvm.add %407, %14  : i64
    %409 = llvm.add %408, %402  : i64
    %410 = llvm.getelementptr %404[%409] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %411 = llvm.load %410 : !llvm.ptr<i1>
    %412 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mul %387, %413  : i64
    %415 = llvm.add %414, %392  : i64
    %416 = llvm.add %415, %14  : i64
    %417 = llvm.add %416, %402  : i64
    %418 = llvm.getelementptr %412[%417] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %419 = llvm.load %418 : !llvm.ptr<i32>
    %420 = llvm.extractvalue %349[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mul %392, %421  : i64
    %423 = llvm.add %422, %397  : i64
    %424 = llvm.add %423, %402  : i64
    %425 = llvm.getelementptr %420[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %426 = llvm.load %425 : !llvm.ptr<i32>
    %427 = llvm.select %411, %419, %426 : i1, i32
    %428 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mul %387, %429  : i64
    %431 = llvm.mlir.constant(2 : index) : i64
    %432 = llvm.mul %392, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.add %433, %397  : i64
    %435 = llvm.add %434, %402  : i64
    %436 = llvm.getelementptr %428[%435] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %427, %436 : !llvm.ptr<i32>
    %437 = llvm.add %402, %401  : i64
    llvm.br ^bb58(%437 : i64)
  ^bb60:  // pred: ^bb58
    %438 = llvm.add %397, %396  : i64
    llvm.br ^bb56(%438 : i64)
  ^bb61:  // pred: ^bb56
    %439 = llvm.add %392, %391  : i64
    llvm.br ^bb54(%439 : i64)
  ^bb62:  // pred: ^bb54
    %440 = llvm.add %387, %386  : i64
    llvm.br ^bb52(%440 : i64)
  ^bb63:  // pred: ^bb52
    %441 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %442 = llvm.insertvalue %185, %441[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %443 = llvm.insertvalue %383, %442[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %443 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

