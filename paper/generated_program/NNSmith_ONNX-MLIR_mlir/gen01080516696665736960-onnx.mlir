module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr<i32>, %arg10: !llvm.ptr<i32>, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %11 = llvm.insertvalue %arg9, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg11, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg16, %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg17, %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg14, %17[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(-2147483648 : i32) : i32
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.null : !llvm.ptr<i32>
    %29 = llvm.getelementptr %28[%27] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %30 = llvm.ptrtoint %29 : !llvm.ptr<i32> to i64
    %31 = llvm.mlir.constant(16 : index) : i64
    %32 = llvm.add %30, %31  : i64
    %33 = llvm.call @malloc(%32) : (i64) -> !llvm.ptr<i8>
    %34 = llvm.bitcast %33 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %35 = llvm.ptrtoint %34 : !llvm.ptr<i32> to i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.sub %31, %36  : i64
    %38 = llvm.add %35, %37  : i64
    %39 = llvm.urem %38, %31  : i64
    %40 = llvm.sub %38, %39  : i64
    %41 = llvm.inttoptr %40 : i64 to !llvm.ptr<i32>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %43 = llvm.insertvalue %34, %42[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.insertvalue %23, %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.insertvalue %24, %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.insertvalue %25, %48[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.insertvalue %24, %49[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.insertvalue %25, %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.insertvalue %26, %51[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%53 : i64)
  ^bb1(%56: i64):  // 2 preds: ^bb0, ^bb8
    %57 = llvm.icmp "slt" %56, %54 : i64
    llvm.cond_br %57, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%58 : i64)
  ^bb3(%61: i64):  // 2 preds: ^bb2, ^bb7
    %62 = llvm.icmp "slt" %61, %59 : i64
    llvm.cond_br %62, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%63 : i64)
  ^bb5(%66: i64):  // 2 preds: ^bb4, ^bb6
    %67 = llvm.icmp "slt" %66, %64 : i64
    llvm.cond_br %67, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %68 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.mul %56, %69  : i64
    %71 = llvm.add %70, %61  : i64
    %72 = llvm.add %71, %66  : i64
    %73 = llvm.getelementptr %68[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %22, %73 : !llvm.ptr<i32>
    %74 = llvm.add %66, %65  : i64
    llvm.br ^bb5(%74 : i64)
  ^bb7:  // pred: ^bb5
    %75 = llvm.add %61, %60  : i64
    llvm.br ^bb3(%75 : i64)
  ^bb8:  // pred: ^bb3
    %76 = llvm.add %56, %55  : i64
    llvm.br ^bb1(%76 : i64)
  ^bb9:  // pred: ^bb1
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%77 : i64)
  ^bb10(%80: i64):  // 2 preds: ^bb9, ^bb20
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%82 : i64)
  ^bb12(%85: i64):  // 2 preds: ^bb11, ^bb19
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%87 : i64)
  ^bb14(%90: i64):  // 2 preds: ^bb13, ^bb18
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%92 : i64)
  ^bb16(%95: i64):  // 2 preds: ^bb15, ^bb17
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %97 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(4 : index) : i64
    %99 = llvm.mul %80, %98  : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %85, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.add %102, %90  : i64
    %104 = llvm.add %103, %95  : i64
    %105 = llvm.getelementptr %97[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %80, %108  : i64
    %110 = llvm.add %109, %85  : i64
    %111 = llvm.add %110, %95  : i64
    %112 = llvm.getelementptr %107[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %113 = llvm.load %112 : !llvm.ptr<i32>
    %114 = llvm.icmp "sgt" %113, %106 : i32
    %115 = llvm.select %114, %113, %106 : i1, i32
    %116 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mul %80, %117  : i64
    %119 = llvm.add %118, %85  : i64
    %120 = llvm.add %119, %95  : i64
    %121 = llvm.getelementptr %116[%120] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %115, %121 : !llvm.ptr<i32>
    %122 = llvm.add %95, %94  : i64
    llvm.br ^bb16(%122 : i64)
  ^bb18:  // pred: ^bb16
    %123 = llvm.add %90, %89  : i64
    llvm.br ^bb14(%123 : i64)
  ^bb19:  // pred: ^bb14
    %124 = llvm.add %85, %84  : i64
    llvm.br ^bb12(%124 : i64)
  ^bb20:  // pred: ^bb12
    %125 = llvm.add %80, %79  : i64
    llvm.br ^bb10(%125 : i64)
  ^bb21:  // pred: ^bb10
    %126 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %127 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.insertvalue %127, %126[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.insertvalue %128, %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.insertvalue %133, %132[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.insertvalue %135, %134[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.insertvalue %137, %136[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.insertvalue %139, %138[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.insertvalue %141, %140[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.insertvalue %143, %142[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.null : !llvm.ptr<i32>
    %151 = llvm.getelementptr %150[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %152 = llvm.ptrtoint %151 : !llvm.ptr<i32> to i64
    %153 = llvm.mlir.constant(16 : index) : i64
    %154 = llvm.add %152, %153  : i64
    %155 = llvm.call @malloc(%154) : (i64) -> !llvm.ptr<i8>
    %156 = llvm.bitcast %155 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<i32> to i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.sub %153, %158  : i64
    %160 = llvm.add %157, %159  : i64
    %161 = llvm.urem %160, %153  : i64
    %162 = llvm.sub %160, %161  : i64
    %163 = llvm.inttoptr %162 : i64 to !llvm.ptr<i32>
    %164 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %165 = llvm.insertvalue %156, %164[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.insertvalue %163, %165[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.insertvalue %167, %166[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.insertvalue %145, %168[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.insertvalue %146, %169[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.insertvalue %147, %170[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.insertvalue %146, %171[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.insertvalue %147, %172[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.insertvalue %148, %173[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%175 : i64)
  ^bb22(%178: i64):  // 2 preds: ^bb21, ^bb29
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb23, ^bb30
  ^bb23:  // pred: ^bb22
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%180 : i64)
  ^bb24(%183: i64):  // 2 preds: ^bb23, ^bb28
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb25, ^bb29
  ^bb25:  // pred: ^bb24
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%185 : i64)
  ^bb26(%188: i64):  // 2 preds: ^bb25, ^bb27
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %190 = llvm.extractvalue %144[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mul %178, %191  : i64
    %193 = llvm.add %192, %183  : i64
    %194 = llvm.add %193, %188  : i64
    %195 = llvm.getelementptr %190[%194] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %196 = llvm.load %195 : !llvm.ptr<i32>
    %197 = llvm.mlir.constant(false) : i1
    %198 = "llvm.intr.abs"(%196, %197) : (i32, i1) -> i32
    %199 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mul %178, %200  : i64
    %202 = llvm.add %201, %183  : i64
    %203 = llvm.add %202, %188  : i64
    %204 = llvm.getelementptr %199[%203] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %198, %204 : !llvm.ptr<i32>
    %205 = llvm.add %188, %187  : i64
    llvm.br ^bb26(%205 : i64)
  ^bb28:  // pred: ^bb26
    %206 = llvm.add %183, %182  : i64
    llvm.br ^bb24(%206 : i64)
  ^bb29:  // pred: ^bb24
    %207 = llvm.add %178, %177  : i64
    llvm.br ^bb22(%207 : i64)
  ^bb30:  // pred: ^bb22
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(4 : index) : i64
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mlir.null : !llvm.ptr<i32>
    %216 = llvm.getelementptr %215[%214] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %217 = llvm.ptrtoint %216 : !llvm.ptr<i32> to i64
    %218 = llvm.mlir.constant(16 : index) : i64
    %219 = llvm.add %217, %218  : i64
    %220 = llvm.call @malloc(%219) : (i64) -> !llvm.ptr<i8>
    %221 = llvm.bitcast %220 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %222 = llvm.ptrtoint %221 : !llvm.ptr<i32> to i64
    %223 = llvm.mlir.constant(1 : index) : i64
    %224 = llvm.sub %218, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.urem %225, %218  : i64
    %227 = llvm.sub %225, %226  : i64
    %228 = llvm.inttoptr %227 : i64 to !llvm.ptr<i32>
    %229 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %230 = llvm.insertvalue %221, %229[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %228, %230[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.insertvalue %232, %231[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %208, %233[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %209, %234[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %210, %235[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %211, %236[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %213, %237[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %210, %238[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %211, %239[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %212, %240[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%242 : i64)
  ^bb31(%245: i64):  // 2 preds: ^bb30, ^bb41
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%247 : i64)
  ^bb33(%250: i64):  // 2 preds: ^bb32, ^bb40
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%252 : i64)
  ^bb35(%255: i64):  // 2 preds: ^bb34, ^bb39
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%257 : i64)
  ^bb37(%260: i64):  // 2 preds: ^bb36, ^bb38
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %262 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.mlir.constant(4 : index) : i64
    %264 = llvm.mul %245, %263  : i64
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mul %250, %265  : i64
    %267 = llvm.add %264, %266  : i64
    %268 = llvm.add %267, %255  : i64
    %269 = llvm.add %268, %260  : i64
    %270 = llvm.getelementptr %262[%269] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %271 = llvm.load %270 : !llvm.ptr<i32>
    %272 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mul %250, %273  : i64
    %275 = llvm.add %274, %255  : i64
    %276 = llvm.add %275, %260  : i64
    %277 = llvm.getelementptr %272[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %278 = llvm.load %277 : !llvm.ptr<i32>
    %279 = llvm.sub %271, %278  : i32
    %280 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mul %245, %281  : i64
    %283 = llvm.mlir.constant(2 : index) : i64
    %284 = llvm.mul %250, %283  : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.add %285, %255  : i64
    %287 = llvm.add %286, %260  : i64
    %288 = llvm.getelementptr %280[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %279, %288 : !llvm.ptr<i32>
    %289 = llvm.add %260, %259  : i64
    llvm.br ^bb37(%289 : i64)
  ^bb39:  // pred: ^bb37
    %290 = llvm.add %255, %254  : i64
    llvm.br ^bb35(%290 : i64)
  ^bb40:  // pred: ^bb35
    %291 = llvm.add %250, %249  : i64
    llvm.br ^bb33(%291 : i64)
  ^bb41:  // pred: ^bb33
    %292 = llvm.add %245, %244  : i64
    llvm.br ^bb31(%292 : i64)
  ^bb42:  // pred: ^bb31
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mlir.null : !llvm.ptr<i64>
    %301 = llvm.getelementptr %300[%299] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %302 = llvm.ptrtoint %301 : !llvm.ptr<i64> to i64
    %303 = llvm.mlir.constant(16 : index) : i64
    %304 = llvm.add %302, %303  : i64
    %305 = llvm.call @malloc(%304) : (i64) -> !llvm.ptr<i8>
    %306 = llvm.bitcast %305 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i64> to i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.sub %303, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.urem %310, %303  : i64
    %312 = llvm.sub %310, %311  : i64
    %313 = llvm.inttoptr %312 : i64 to !llvm.ptr<i64>
    %314 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %315 = llvm.insertvalue %306, %314[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %313, %315[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.insertvalue %317, %316[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %293, %318[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %294, %319[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %295, %320[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %296, %321[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %298, %322[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %295, %323[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %296, %324[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %297, %325[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%327 : i64)
  ^bb43(%330: i64):  // 2 preds: ^bb42, ^bb53
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%332 : i64)
  ^bb45(%335: i64):  // 2 preds: ^bb44, ^bb52
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%337 : i64)
  ^bb47(%340: i64):  // 2 preds: ^bb46, ^bb51
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%342 : i64)
  ^bb49(%345: i64):  // 2 preds: ^bb48, ^bb50
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %347 = llvm.extractvalue %241[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mul %330, %348  : i64
    %350 = llvm.mlir.constant(2 : index) : i64
    %351 = llvm.mul %335, %350  : i64
    %352 = llvm.add %349, %351  : i64
    %353 = llvm.add %352, %340  : i64
    %354 = llvm.add %353, %345  : i64
    %355 = llvm.getelementptr %347[%354] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %356 = llvm.load %355 : !llvm.ptr<i32>
    %357 = llvm.sext %356 : i32 to i64
    %358 = llvm.extractvalue %326[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(4 : index) : i64
    %360 = llvm.mul %330, %359  : i64
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mul %335, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.add %363, %340  : i64
    %365 = llvm.add %364, %345  : i64
    %366 = llvm.getelementptr %358[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %357, %366 : !llvm.ptr<i64>
    %367 = llvm.add %345, %344  : i64
    llvm.br ^bb49(%367 : i64)
  ^bb51:  // pred: ^bb49
    %368 = llvm.add %340, %339  : i64
    llvm.br ^bb47(%368 : i64)
  ^bb52:  // pred: ^bb47
    %369 = llvm.add %335, %334  : i64
    llvm.br ^bb45(%369 : i64)
  ^bb53:  // pred: ^bb45
    %370 = llvm.add %330, %329  : i64
    llvm.br ^bb43(%370 : i64)
  ^bb54:  // pred: ^bb43
    %371 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %372 = llvm.insertvalue %174, %371[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %373 = llvm.insertvalue %326, %372[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %373 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %11 = llvm.extractvalue %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %10[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %10[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %10[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %10[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %22, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %37 = llvm.mlir.constant(1 : i64) : i64
    %38 = llvm.getelementptr %0[%37] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %39 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %40 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %42 = llvm.call @omTensorGetDataPtr(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %44 = llvm.insertvalue %43, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %43, %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(0 : i64) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.call @omTensorGetShape(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %49 = llvm.call @omTensorGetStrides(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %50 = llvm.mlir.constant(0 : i64) : i64
    %51 = llvm.getelementptr %48[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %49[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : i64) : i64
    %58 = llvm.getelementptr %48[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %49[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.getelementptr %48[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %49[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(3 : i64) : i64
    %72 = llvm.getelementptr %48[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %49[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %77, %40 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %40) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %78 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %79 = llvm.extractvalue %78[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %80 = llvm.extractvalue %78[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %81 = llvm.mlir.constant(2 : i64) : i64
    %82 = llvm.mlir.constant(16 : i64) : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %79[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(0 : i64) : i64
    %111 = llvm.getelementptr %84[%110] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %111 : !llvm.ptr<ptr<i8>>
    %112 = llvm.mlir.constant(4 : i64) : i64
    %113 = llvm.call @omTensorCreateUntyped(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.extractvalue %80[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %117 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.bitcast %117 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%113, %114, %116, %118) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %119 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%113, %119) : (!llvm.ptr<i8>, i64) -> ()
    %120 = llvm.call @omTensorGetShape(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.call @omTensorGetStrides(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.extractvalue %80[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %120[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %80[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %121[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %80[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %120[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %80[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %121[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(2 : i64) : i64
    %133 = llvm.extractvalue %80[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %120[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %80[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %121[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(3 : i64) : i64
    %138 = llvm.extractvalue %80[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %120[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %80[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %121[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(1 : i64) : i64
    %143 = llvm.getelementptr %84[%142] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %113, %143 : !llvm.ptr<ptr<i8>>
    %144 = llvm.call @omTensorListCreate(%84, %81, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %144 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<138 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<138 x i8>> to !llvm.ptr<i8>
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

