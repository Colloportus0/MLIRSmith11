module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[[[[6, 6], [4, 5]]]]> : tensor<1x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.constant(1 : i64) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>>
    %12 = llvm.bitcast %11 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %13 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %14 = llvm.insertvalue %12, %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %12, %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.insertvalue %16, %15[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.insertvalue %18, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(4 : index) : i64
    %21 = llvm.insertvalue %20, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.insertvalue %30, %29[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %52 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %53 = llvm.bitcast %52 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(4 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mlir.constant(2 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(4 : index) : i64
    %69 = llvm.mlir.constant(4 : index) : i64
    %70 = llvm.mlir.constant(4 : index) : i64
    %71 = llvm.mlir.null : !llvm.ptr<i32>
    %72 = llvm.getelementptr %71[%70] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %73 = llvm.ptrtoint %72 : !llvm.ptr<i32> to i64
    %74 = llvm.mlir.constant(16 : index) : i64
    %75 = llvm.add %73, %74  : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<i32> to i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.sub %74, %79  : i64
    %81 = llvm.add %78, %80  : i64
    %82 = llvm.urem %81, %74  : i64
    %83 = llvm.sub %81, %82  : i64
    %84 = llvm.inttoptr %83 : i64 to !llvm.ptr<i32>
    %85 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %86 = llvm.insertvalue %77, %85[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %63, %89[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %64, %90[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %65, %91[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %66, %92[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %69, %93[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %68, %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %66, %95[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %67, %96[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%98 : i64)
  ^bb1(%101: i64):  // 2 preds: ^bb0, ^bb11
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%103 : i64)
  ^bb3(%106: i64):  // 2 preds: ^bb2, ^bb10
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%108 : i64)
  ^bb5(%111: i64):  // 2 preds: ^bb4, ^bb9
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%113 : i64)
  ^bb7(%116: i64):  // 2 preds: ^bb6, ^bb8
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %118 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mul %111, %119  : i64
    %121 = llvm.add %120, %116  : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(4 : index) : i64
    %126 = llvm.mul %101, %125  : i64
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mul %106, %127  : i64
    %129 = llvm.add %126, %128  : i64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %111, %130  : i64
    %132 = llvm.add %129, %131  : i64
    %133 = llvm.add %132, %116  : i64
    %134 = llvm.getelementptr %124[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.load %134 : !llvm.ptr<i32>
    %136 = llvm.add %123, %135  : i32
    %137 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(4 : index) : i64
    %139 = llvm.mul %101, %138  : i64
    %140 = llvm.mlir.constant(4 : index) : i64
    %141 = llvm.mul %106, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mul %111, %143  : i64
    %145 = llvm.add %142, %144  : i64
    %146 = llvm.add %145, %116  : i64
    %147 = llvm.getelementptr %137[%146] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %136, %147 : !llvm.ptr<i32>
    %148 = llvm.add %116, %115  : i64
    llvm.br ^bb7(%148 : i64)
  ^bb9:  // pred: ^bb7
    %149 = llvm.add %111, %110  : i64
    llvm.br ^bb5(%149 : i64)
  ^bb10:  // pred: ^bb5
    %150 = llvm.add %106, %105  : i64
    llvm.br ^bb3(%150 : i64)
  ^bb11:  // pred: ^bb3
    %151 = llvm.add %101, %100  : i64
    llvm.br ^bb1(%151 : i64)
  ^bb12:  // pred: ^bb1
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(4 : index) : i64
    %158 = llvm.mlir.constant(4 : index) : i64
    %159 = llvm.mlir.constant(4 : index) : i64
    %160 = llvm.mlir.null : !llvm.ptr<i1>
    %161 = llvm.getelementptr %160[%159] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %162 = llvm.ptrtoint %161 : !llvm.ptr<i1> to i64
    %163 = llvm.mlir.constant(16 : index) : i64
    %164 = llvm.add %162, %163  : i64
    %165 = llvm.call @malloc(%164) : (i64) -> !llvm.ptr<i8>
    %166 = llvm.bitcast %165 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %167 = llvm.ptrtoint %166 : !llvm.ptr<i1> to i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.sub %163, %168  : i64
    %170 = llvm.add %167, %169  : i64
    %171 = llvm.urem %170, %163  : i64
    %172 = llvm.sub %170, %171  : i64
    %173 = llvm.inttoptr %172 : i64 to !llvm.ptr<i1>
    %174 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %175 = llvm.insertvalue %166, %174[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %173, %175[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.insertvalue %177, %176[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %152, %178[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %153, %179[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %154, %180[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %155, %181[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.insertvalue %158, %182[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.insertvalue %157, %183[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %155, %184[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %156, %185[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%187 : i64)
  ^bb13(%190: i64):  // 2 preds: ^bb12, ^bb23
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%192 : i64)
  ^bb15(%195: i64):  // 2 preds: ^bb14, ^bb22
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%197 : i64)
  ^bb17(%200: i64):  // 2 preds: ^bb16, ^bb21
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(2 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%202 : i64)
  ^bb19(%205: i64):  // 2 preds: ^bb18, ^bb20
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %207 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.mlir.constant(4 : index) : i64
    %209 = llvm.mul %190, %208  : i64
    %210 = llvm.mlir.constant(4 : index) : i64
    %211 = llvm.mul %195, %210  : i64
    %212 = llvm.add %209, %211  : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %200, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.add %215, %205  : i64
    %217 = llvm.getelementptr %207[%216] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %218 = llvm.load %217 : !llvm.ptr<i32>
    %219 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mul %200, %220  : i64
    %222 = llvm.add %221, %205  : i64
    %223 = llvm.getelementptr %219[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %224 = llvm.load %223 : !llvm.ptr<i32>
    %225 = llvm.icmp "slt" %218, %224 : i32
    %226 = llvm.extractvalue %186[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.mlir.constant(4 : index) : i64
    %228 = llvm.mul %190, %227  : i64
    %229 = llvm.mlir.constant(4 : index) : i64
    %230 = llvm.mul %195, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mul %200, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.add %234, %205  : i64
    %236 = llvm.getelementptr %226[%235] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %225, %236 : !llvm.ptr<i1>
    %237 = llvm.add %205, %204  : i64
    llvm.br ^bb19(%237 : i64)
  ^bb21:  // pred: ^bb19
    %238 = llvm.add %200, %199  : i64
    llvm.br ^bb17(%238 : i64)
  ^bb22:  // pred: ^bb17
    %239 = llvm.add %195, %194  : i64
    llvm.br ^bb15(%239 : i64)
  ^bb23:  // pred: ^bb15
    %240 = llvm.add %190, %189  : i64
    llvm.br ^bb13(%240 : i64)
  ^bb24:  // pred: ^bb13
    %241 = llvm.mlir.constant(4 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.null : !llvm.ptr<i64>
    %244 = llvm.getelementptr %243[%241] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %245 = llvm.ptrtoint %244 : !llvm.ptr<i64> to i64
    %246 = llvm.mlir.constant(16 : index) : i64
    %247 = llvm.add %245, %246  : i64
    %248 = llvm.call @malloc(%247) : (i64) -> !llvm.ptr<i8>
    %249 = llvm.bitcast %248 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %250 = llvm.ptrtoint %249 : !llvm.ptr<i64> to i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.sub %246, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.urem %253, %246  : i64
    %255 = llvm.sub %253, %254  : i64
    %256 = llvm.inttoptr %255 : i64 to !llvm.ptr<i64>
    %257 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %258 = llvm.insertvalue %249, %257[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.insertvalue %256, %258[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.insertvalue %260, %259[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.insertvalue %241, %261[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %242, %262[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(4 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%264 : i64)
  ^bb25(%267: i64):  // 2 preds: ^bb24, ^bb26
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %269 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.getelementptr %269[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %8, %270 : !llvm.ptr<i64>
    %271 = llvm.add %267, %266  : i64
    llvm.br ^bb25(%271 : i64)
  ^bb27:  // pred: ^bb25
    %272 = llvm.mlir.constant(4 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.null : !llvm.ptr<i64>
    %275 = llvm.getelementptr %274[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %276 = llvm.ptrtoint %275 : !llvm.ptr<i64> to i64
    %277 = llvm.mlir.constant(16 : index) : i64
    %278 = llvm.add %276, %277  : i64
    %279 = llvm.call @malloc(%278) : (i64) -> !llvm.ptr<i8>
    %280 = llvm.bitcast %279 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %281 = llvm.ptrtoint %280 : !llvm.ptr<i64> to i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.sub %277, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.urem %284, %277  : i64
    %286 = llvm.sub %284, %285  : i64
    %287 = llvm.inttoptr %286 : i64 to !llvm.ptr<i64>
    %288 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %289 = llvm.insertvalue %280, %288[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.insertvalue %287, %289[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.insertvalue %291, %290[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %272, %292[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.insertvalue %273, %293[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%295 : i64)
  ^bb28(%298: i64):  // 2 preds: ^bb27, ^bb29
    %299 = llvm.icmp "slt" %298, %296 : i64
    llvm.cond_br %299, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %300 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.getelementptr %300[%298] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %302 = llvm.load %301 : !llvm.ptr<i64>
    %303 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %304 = llvm.load %303 : !llvm.ptr<i64>
    %305 = llvm.mul %302, %304  : i64
    %306 = llvm.extractvalue %294[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.getelementptr %306[%298] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %305, %307 : !llvm.ptr<i64>
    %308 = llvm.add %298, %297  : i64
    llvm.br ^bb28(%308 : i64)
  ^bb30:  // pred: ^bb28
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.null : !llvm.ptr<i1>
    %312 = llvm.getelementptr %311[%309] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %313 = llvm.ptrtoint %312 : !llvm.ptr<i1> to i64
    %314 = llvm.mlir.constant(16 : index) : i64
    %315 = llvm.add %313, %314  : i64
    %316 = llvm.call @malloc(%315) : (i64) -> !llvm.ptr<i8>
    %317 = llvm.bitcast %316 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %318 = llvm.ptrtoint %317 : !llvm.ptr<i1> to i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.sub %314, %319  : i64
    %321 = llvm.add %318, %320  : i64
    %322 = llvm.urem %321, %314  : i64
    %323 = llvm.sub %321, %322  : i64
    %324 = llvm.inttoptr %323 : i64 to !llvm.ptr<i1>
    %325 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %326 = llvm.insertvalue %317, %325[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.insertvalue %324, %326[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.insertvalue %328, %327[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.insertvalue %309, %329[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.insertvalue %310, %330[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%332 : i64)
  ^bb31(%335: i64):  // 2 preds: ^bb30, ^bb32
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %337 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.getelementptr %337[%335] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %339 = llvm.load %338 : !llvm.ptr<i64>
    %340 = llvm.extractvalue %294[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%335] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %342 = llvm.load %341 : !llvm.ptr<i64>
    %343 = llvm.icmp "eq" %339, %342 : i64
    %344 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.getelementptr %344[%335] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %343, %345 : !llvm.ptr<i1>
    %346 = llvm.add %335, %334  : i64
    llvm.br ^bb31(%346 : i64)
  ^bb33:  // pred: ^bb31
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.null : !llvm.ptr<i64>
    %350 = llvm.getelementptr %349[%347] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %351 = llvm.ptrtoint %350 : !llvm.ptr<i64> to i64
    %352 = llvm.mlir.constant(16 : index) : i64
    %353 = llvm.add %351, %352  : i64
    %354 = llvm.call @malloc(%353) : (i64) -> !llvm.ptr<i8>
    %355 = llvm.bitcast %354 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %356 = llvm.ptrtoint %355 : !llvm.ptr<i64> to i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.sub %352, %357  : i64
    %359 = llvm.add %356, %358  : i64
    %360 = llvm.urem %359, %352  : i64
    %361 = llvm.sub %359, %360  : i64
    %362 = llvm.inttoptr %361 : i64 to !llvm.ptr<i64>
    %363 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %364 = llvm.insertvalue %355, %363[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.insertvalue %362, %364[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.insertvalue %366, %365[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.insertvalue %347, %367[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.insertvalue %348, %368[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%370 : i64)
  ^bb34(%373: i64):  // 2 preds: ^bb33, ^bb35
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %375 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.getelementptr %375[%373] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %377 = llvm.load %376 : !llvm.ptr<i1>
    %378 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.getelementptr %378[%373] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %380 = llvm.load %379 : !llvm.ptr<i64>
    %381 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.getelementptr %381[%373] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %383 = llvm.load %382 : !llvm.ptr<i64>
    %384 = llvm.select %377, %380, %383 : i1, i64
    %385 = llvm.extractvalue %369[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.getelementptr %385[%373] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %384, %386 : !llvm.ptr<i64>
    %387 = llvm.add %373, %372  : i64
    llvm.br ^bb34(%387 : i64)
  ^bb36:  // pred: ^bb34
    %388 = llvm.extractvalue %369[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.getelementptr %388[%9] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %390 = llvm.load %389 : !llvm.ptr<i64>
    %391 = llvm.extractvalue %369[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.getelementptr %391[%10] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %393 = llvm.load %392 : !llvm.ptr<i64>
    %394 = llvm.mlir.constant(2 : index) : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(4 : index) : i64
    %398 = llvm.mul %397, %393  : i64
    %399 = llvm.mul %398, %390  : i64
    %400 = llvm.mlir.null : !llvm.ptr<i32>
    %401 = llvm.getelementptr %400[%399] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %402 = llvm.ptrtoint %401 : !llvm.ptr<i32> to i64
    %403 = llvm.mlir.constant(16 : index) : i64
    %404 = llvm.add %402, %403  : i64
    %405 = llvm.call @malloc(%404) : (i64) -> !llvm.ptr<i8>
    %406 = llvm.bitcast %405 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %407 = llvm.ptrtoint %406 : !llvm.ptr<i32> to i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.sub %403, %408  : i64
    %410 = llvm.add %407, %409  : i64
    %411 = llvm.urem %410, %403  : i64
    %412 = llvm.sub %410, %411  : i64
    %413 = llvm.inttoptr %412 : i64 to !llvm.ptr<i32>
    %414 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %415 = llvm.insertvalue %406, %414[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %413, %415[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.insertvalue %417, %416[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %390, %418[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %394, %420[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %395, %421[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %398, %422[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %397, %423[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %395, %424[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %396, %425[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%427 : i64)
  ^bb37(%429: i64):  // 2 preds: ^bb36, ^bb47
    %430 = llvm.icmp "slt" %429, %390 : i64
    llvm.cond_br %430, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%431 : i64)
  ^bb39(%433: i64):  // 2 preds: ^bb38, ^bb46
    %434 = llvm.icmp "slt" %433, %393 : i64
    llvm.cond_br %434, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %435 = llvm.mlir.constant(0 : index) : i64
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%435 : i64)
  ^bb41(%438: i64):  // 2 preds: ^bb40, ^bb45
    %439 = llvm.icmp "slt" %438, %436 : i64
    llvm.cond_br %439, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(2 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%440 : i64)
  ^bb43(%443: i64):  // 2 preds: ^bb42, ^bb44
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %445 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mul %9, %446  : i64
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mul %9, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mul %438, %451  : i64
    %453 = llvm.add %450, %452  : i64
    %454 = llvm.add %453, %443  : i64
    %455 = llvm.getelementptr %445[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %456 = llvm.load %455 : !llvm.ptr<i32>
    %457 = llvm.extractvalue %426[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.extractvalue %426[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.mul %429, %458  : i64
    %460 = llvm.mlir.constant(4 : index) : i64
    %461 = llvm.mul %433, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mul %438, %463  : i64
    %465 = llvm.add %462, %464  : i64
    %466 = llvm.add %465, %443  : i64
    %467 = llvm.getelementptr %457[%466] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %456, %467 : !llvm.ptr<i32>
    %468 = llvm.add %443, %442  : i64
    llvm.br ^bb43(%468 : i64)
  ^bb45:  // pred: ^bb43
    %469 = llvm.add %438, %437  : i64
    llvm.br ^bb41(%469 : i64)
  ^bb46:  // pred: ^bb41
    %470 = llvm.add %433, %432  : i64
    llvm.br ^bb39(%470 : i64)
  ^bb47:  // pred: ^bb39
    %471 = llvm.add %429, %428  : i64
    llvm.br ^bb37(%471 : i64)
  ^bb48:  // pred: ^bb37
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    %477 = llvm.mlir.constant(4 : index) : i64
    %478 = llvm.mlir.constant(4 : index) : i64
    %479 = llvm.mlir.constant(4 : index) : i64
    %480 = llvm.mlir.null : !llvm.ptr<i1>
    %481 = llvm.getelementptr %480[%479] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %482 = llvm.ptrtoint %481 : !llvm.ptr<i1> to i64
    %483 = llvm.mlir.constant(16 : index) : i64
    %484 = llvm.add %482, %483  : i64
    %485 = llvm.call @malloc(%484) : (i64) -> !llvm.ptr<i8>
    %486 = llvm.bitcast %485 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %487 = llvm.ptrtoint %486 : !llvm.ptr<i1> to i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.sub %483, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.urem %490, %483  : i64
    %492 = llvm.sub %490, %491  : i64
    %493 = llvm.inttoptr %492 : i64 to !llvm.ptr<i1>
    %494 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %495 = llvm.insertvalue %486, %494[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.insertvalue %493, %495[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.insertvalue %497, %496[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %472, %498[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %473, %499[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %474, %500[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %475, %501[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %478, %502[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %477, %503[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %475, %504[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %476, %505[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%507 : i64)
  ^bb49(%510: i64):  // 2 preds: ^bb48, ^bb59
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%512 : i64)
  ^bb51(%515: i64):  // 2 preds: ^bb50, ^bb58
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(2 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%517 : i64)
  ^bb53(%520: i64):  // 2 preds: ^bb52, ^bb57
    %521 = llvm.icmp "slt" %520, %518 : i64
    llvm.cond_br %521, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %522 = llvm.mlir.constant(0 : index) : i64
    %523 = llvm.mlir.constant(2 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%522 : i64)
  ^bb55(%525: i64):  // 2 preds: ^bb54, ^bb56
    %526 = llvm.icmp "slt" %525, %523 : i64
    llvm.cond_br %526, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %527 = llvm.extractvalue %426[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.extractvalue %426[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.mul %510, %528  : i64
    %530 = llvm.mlir.constant(4 : index) : i64
    %531 = llvm.mul %515, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.mlir.constant(2 : index) : i64
    %534 = llvm.mul %520, %533  : i64
    %535 = llvm.add %532, %534  : i64
    %536 = llvm.add %535, %525  : i64
    %537 = llvm.getelementptr %527[%536] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %538 = llvm.load %537 : !llvm.ptr<i32>
    %539 = llvm.extractvalue %97[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.mlir.constant(4 : index) : i64
    %541 = llvm.mul %9, %540  : i64
    %542 = llvm.mlir.constant(4 : index) : i64
    %543 = llvm.mul %9, %542  : i64
    %544 = llvm.add %541, %543  : i64
    %545 = llvm.mlir.constant(2 : index) : i64
    %546 = llvm.mul %520, %545  : i64
    %547 = llvm.add %544, %546  : i64
    %548 = llvm.add %547, %525  : i64
    %549 = llvm.getelementptr %539[%548] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %550 = llvm.load %549 : !llvm.ptr<i32>
    %551 = llvm.icmp "slt" %538, %550 : i32
    %552 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.mlir.constant(4 : index) : i64
    %554 = llvm.mul %510, %553  : i64
    %555 = llvm.mlir.constant(4 : index) : i64
    %556 = llvm.mul %515, %555  : i64
    %557 = llvm.add %554, %556  : i64
    %558 = llvm.mlir.constant(2 : index) : i64
    %559 = llvm.mul %520, %558  : i64
    %560 = llvm.add %557, %559  : i64
    %561 = llvm.add %560, %525  : i64
    %562 = llvm.getelementptr %552[%561] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %551, %562 : !llvm.ptr<i1>
    %563 = llvm.add %525, %524  : i64
    llvm.br ^bb55(%563 : i64)
  ^bb57:  // pred: ^bb55
    %564 = llvm.add %520, %519  : i64
    llvm.br ^bb53(%564 : i64)
  ^bb58:  // pred: ^bb53
    %565 = llvm.add %515, %514  : i64
    llvm.br ^bb51(%565 : i64)
  ^bb59:  // pred: ^bb51
    %566 = llvm.add %510, %509  : i64
    llvm.br ^bb49(%566 : i64)
  ^bb60:  // pred: ^bb49
    %567 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %568 = llvm.insertvalue %186, %567[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %569 = llvm.insertvalue %506, %568[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %569 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %8, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>) -> ()
    %30 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %31 = llvm.extractvalue %30[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %32 = llvm.extractvalue %30[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %33 = llvm.mlir.constant(2 : i64) : i64
    %34 = llvm.mlir.constant(16 : i64) : i64
    %35 = llvm.call @malloc(%34) : (i64) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %37 = llvm.mlir.constant(4 : i64) : i64
    %38 = llvm.call @omTensorCreateUntyped(%37) : (i64) -> !llvm.ptr<i8>
    %39 = llvm.mlir.constant(1 : i64) : i64
    %40 = llvm.extractvalue %31[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.bitcast %40 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %42 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.bitcast %42 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%38, %39, %41, %43) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %44 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%38, %44) : (!llvm.ptr<i8>, i64) -> ()
    %45 = llvm.call @omTensorGetShape(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %46 = llvm.call @omTensorGetStrides(%38) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %47 = llvm.mlir.constant(0 : i64) : i64
    %48 = llvm.extractvalue %31[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.getelementptr %45[%47] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %49 : !llvm.ptr<i64>
    %50 = llvm.extractvalue %31[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.getelementptr %46[%47] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %50, %51 : !llvm.ptr<i64>
    %52 = llvm.mlir.constant(1 : i64) : i64
    %53 = llvm.extractvalue %31[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %45[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.extractvalue %31[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.getelementptr %46[%52] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %55, %56 : !llvm.ptr<i64>
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.extractvalue %31[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %45[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.extractvalue %31[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %46[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.mlir.constant(3 : i64) : i64
    %63 = llvm.extractvalue %31[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %45[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %31[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %46[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(0 : i64) : i64
    %68 = llvm.getelementptr %36[%67] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %38, %68 : !llvm.ptr<ptr<i8>>
    %69 = llvm.mlir.constant(4 : i64) : i64
    %70 = llvm.call @omTensorCreateUntyped(%69) : (i64) -> !llvm.ptr<i8>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %32[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.bitcast %72 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %74 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%70, %71, %73, %75) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %76 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%70, %76) : (!llvm.ptr<i8>, i64) -> ()
    %77 = llvm.call @omTensorGetShape(%70) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %78 = llvm.call @omTensorGetStrides(%70) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.extractvalue %32[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %77[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %32[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %78[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(1 : i64) : i64
    %85 = llvm.extractvalue %32[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %77[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %32[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %78[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(2 : i64) : i64
    %90 = llvm.extractvalue %32[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %77[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %32[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %78[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(3 : i64) : i64
    %95 = llvm.extractvalue %32[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %77[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %32[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %78[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.getelementptr %36[%99] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %70, %100 : !llvm.ptr<ptr<i8>>
    %101 = llvm.call @omTensorListCreate(%36, %33, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %101 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<64 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<64 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<139 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<139 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

